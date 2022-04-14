# A bug of debug 1.5.0?

`Kernel.#fork` failed in child process when fork_mode is parent

## Requirements 

Ruby 3.1.0 or higher

## Reproduce

```
docker build . -t debug-test
docker run --rm -t debug-test
```

or 

```
bundle install
bundle exec ruby repro.rb
```

## Expected

```
DEBUGGER: Detaching after fork from child process 420
parent forked.
child forked.
```

## Actual

```
DEBUGGER: Detaching after fork from child process 8
parent forked.
/usr/local/bundle/gems/debug-1.5.0/lib/debug/session.rb:2140:in `_fork': no block given (yield) (LocalJumpError)
  from repro.rb:7:in `fork'
  from repro.rb:7:in `block in <main>'
  from repro.rb:5:in `fork'
  from repro.rb:5:in `<main>'
```
