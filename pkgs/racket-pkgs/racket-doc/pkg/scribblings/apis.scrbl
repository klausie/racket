#lang scribble/manual
@(require "common.rkt"
          (for-label (except-in racket/base
                                remove)
                     racket/contract/base
                     pkg
                     pkg/lib))

@title[#:tag "apis" #:style 'toc]{Package APIs}

The @racketmodname[pkg] provides a programmatic interface to the
@exec{raco pkg} commands, but additional libraries provide smaller
building blocks and local-database support.

@local-table-of-contents[]

@section{Functions for @exec{raco pkg}}

@defmodule[pkg]

The @racketmodname[pkg] module provides a programmatic interface
to the @exec{raco pkg} sub-subcommands.

 Each-long form option of the command-line interface is keyword
 argument to the functions described below. An argument corresponding to @DFlag{type}, @DFlag{deps},
 @DFlag{format}, or @DFlag{scope} accepts its argument as a symbol. All other options
 accept booleans, where @racket[#t] is equivalent to the presence of
 the option.

@defthing[pkg-install-command procedure?]{Implements @command-ref{install}.}
@defthing[pkg-update-command procedure?]{Implements @command-ref{update}.}
@defthing[pkg-remove-command procedure?]{Implements @command-ref{remove}.}
@defthing[pkg-show-command procedure?]{Implements @command-ref{show}.}
@defthing[pkg-migrate-command procedure?]{Implements @command-ref{migrate}.}
@defthing[pkg-config-command procedure?]{Implements @command-ref{config}.}
@defthing[pkg-create-command procedure?]{Implements @command-ref{create}.}
@defthing[pkg-catalog-show-command procedure?]{Implements @command-ref{catalog-show}.}
@defthing[pkg-catalog-copy-command procedure?]{Implements @command-ref{catalog-copy}.}


@include-section["lib.scrbl"]
@include-section["path.scrbl"]
@include-section["db.scrbl"]
