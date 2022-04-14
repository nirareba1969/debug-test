## Your environment

- `ruby -v`: `ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-darwin21]`
- `rdbg -v`: `rdbg 1.5.0`

## Description

`Kernel.#fork` failed in child process when fork_mode is parent

## Reproduction

```
docker build . -t debug-test
docker run --rm -t debug-test
```

or 

```
bundle install
bundle exec ruby repro.rb
```

## Expected Behavior

```
DEBUGGER: Detaching after fork from child process 9
parent forked.
child forked.
```

## Actual Behavior

```
DEBUGGER: Detaching after fork from child process 9
parent forked.
/usr/local/bundle/gems/debug-1.5.0/lib/debug/session.rb:2140:in `_fork': no block given (yield) (LocalJumpError)
  from repro.rb:7:in `fork'
  from repro.rb:7:in `block in <main>'
  from repro.rb:5:in `fork'
  from repro.rb:5:in `<main>'
```
