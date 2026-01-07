compile:
    #!/usr/bin/env nu
    glob *.tex | get 0 | pdflatex $in

clean:
    #!/usr/bin/env nu
    let extensions = [
        aux
        log
        out
        pdf
    ]
    $extensions | each {
      glob $"*.($in)" | each {
        rm $in
      }
    }
    print "cleaned!"
