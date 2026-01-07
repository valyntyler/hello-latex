compile:
    pdflatex hello.tex

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
