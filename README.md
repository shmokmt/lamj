# lamj

A Zsh utility for quickly navigating to Lambda function directories managed by [lambroll](https://github.com/fujiwara/lambroll).

## Overview

`lamj` (Lambda Jump) is a simple Zsh function that helps you quickly navigate to AWS Lambda function directories managed by [fujiwara/lambroll](https://github.com/fujiwara/lambroll) within your Git repository. It searches for directories containing `.lambdaignore` files (which are used by lambroll to exclude files from deployment) and provides an interactive selection menu using `fzf`.

### Prerequisites

- `git`
- `rg` (ripgrep)
- `fzf`

## Installation

### Using zinit

Add the following to your `.zshrc`:

```zsh
zinit light shmokmt/lamj
```

Then reload your shell or run:

```zsh
source ~/.zshrc
```

## Usage

Simply run `lamj` from anywhere within your Git repository:

```bash
lamj
```
