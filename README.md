# Getting Started with Agda on NixOS

You still need to set up your system according to this [blog post](http://blog.ielliott.io/agda-nixos/).

However, I had trouble setting up Emacs and figuring out how to install things in an isolated way.

## Get it running

```
# first do what the blog post says
nix-shell
agda-mode setup
emacs hello-world.agda
```

Now you can follow the official [Getting Started](https://agda.readthedocs.io/en/v2.6.0.1/getting-started/hello-world.html)
tutorial on Agda.

You shouldn't have to modify the code at all if setting things up from the blog post worked.
