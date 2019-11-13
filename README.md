# rts-zsh

This is a ZSH plugin containing helpful aliases for RTS projects.

## Installation

Antigen:

```
antigen bundle trevorKirpaulRTS/rts-zsh
```

## Commands

| name    | description                                                                    |
| ------- | ------------------------------------------------------------------------------ |
| rts     | test command                                                                   |
| rnClean | runs a series of commands to clear watchman and package files for a RN project |

> **NOTE:** `rnClean` uses the `--force` flag and will prompt a message saying "I hope you know what you are doing". This message is fine since it's used to clean the cache, an intended result of the command.
