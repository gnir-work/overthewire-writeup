# GDB cheat sheet 

This is a cheat sheet that I am writing for myself while going through over the wire ctfs.



## Arguments

1. `--args` - Run the exe with command line arguments.



## Commands

### Pre debugging flags

1. `set disassembly-flavor intel` - Pretty obvious from the name :)
2. `ex <command>` - Execute the given gdb command at the startup of the session. Actually pretty useless given you have `~/.gdbinit` but in overthewire you can change that file.
3. 

### Info Extraction

1. `disas` - disassemble the current binary and show `eip` location in case it is being executed.
2. `info registers` - Show the values of all of the registers.
3.  `x/<number>/x <location>` - Show the `number` of bytes in hex from the given `location`.



### Flow control

#### Break points

Settings the breakpoint is done with the `b` command.

##### Examples:

```bash
> b *main + 5 # Will break at start of main + offset 5
```

```bash
> b *0x0804845a # Break at memory address 0x0804845a
```

#### Stepping

Stepping is done with the `s` command.



## Aliases

1. `alias igdb='gdb -ex "set disassembly-flavor intel" --args'`
2. 



