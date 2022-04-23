[1;31mSignature:[0m      [0mpretty_print[0m[1;33m([0m[1;33m*[0m[0margs[0m[1;33m,[0m [1;33m**[0m[0mkwds[0m[1;33m)[0m[1;33m[0m[1;33m[0m[0m
[1;31mDocstring:[0m     
   Pretty print the arguments in an intelligent way.

   For a single positional argument, this function chooses the
   highest-quality output supported by the user interface.

   For certain homogeneous multiple positional arguments a suitable
   combined graphical output is generated. In particular, graphs and
   plots are treated special.

   Otherwise this function will concatenate the textual
   representations. Latex output is preferred if none is specified via
   "preferences()".

   INPUT:

   * "*args" -- any number of positional arguments. The objects to
     pretty print. If the single argument is an iterator/generator
     then it is expanded.

   * "**kwds" -- optional keyword arguments that are passed to the
     rich representation. Examples include:

        * "dpi" - dots per inch

        * "figsize"- [width, height] (same for square aspect)

        * "axes" - (default: True)

        * "fontsize" - positive integer

        * "frame" - (default: False) draw a MATLAB-like frame around
          the image

   EXAMPLES:

      sage: pretty_print(ZZ)
      <html><script type="math/tex">newcommand{Bold}[1]{mathbf{#1}}Bold{Z}</script></html>

      sage: pretty_print("Integers = ", ZZ) # trac 11775
      <html><script type="math/tex">newcommand{Bold}[1]{mathbf{#1}}verb|Integers|phantom{verb!x!}verb|=| Bold{Z}</script></html>

   To typeset LaTeX code as-is, use "LatexExpr":

      sage: pretty_print(LatexExpr(r"frac{x^2 + 1}{x - 2}"))
      <html><script type="math/tex">newcommand{Bold}[1]{mathbf{#1}}frac{x^2 + 1}{x - 2}</script></html>
[1;31mInit docstring:[0m Initialize self.  See help(type(self)) for accurate signature.
[1;31mFile:[0m           /usr/lib/python3/dist-packages/sage/repl/rich_output/pretty_print.py
[1;31mType:[0m           function
