use sdl
import sdl/Core

use glew
import glew

use glu
import glu

import math

main: func {

    (width, height) := (640, 480)
    SDL init(SDL_INIT_EVERYTHING)
    screen := SDL setMode(width, height, 16, SDL_OPENGL)
    SDL wmSetCaption("SDL glew example", null)

    reshape(width, height)
    draw()
    SDL glSwapBuffers()

    SDL delay(2000)

    SDL quit()

}

reshape: func (width, height: Int) {
    h := height as Float / width as Float

    glViewport(0, 0, width as Int, height as Int)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glFrustum(-1.0, 1.0, -h, h, 5.0, 60.0)
    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()
}

draw: func {
    glClearColor(0.0, 0.0, 0.0, 1.0)
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()
    glTranslatef(0.0, 0.0, -10.0)

    glColor3f(1.0, 1.0, 1.0)

    glRotatef(90.0, 1.0, 0.0, 0.0)
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE)
    quadric := gluNewQuadric()
    gluSphere(quadric, 1.0, 18, 18)
    gluDeleteQuadric(quadric)
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL)
}


