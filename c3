class  Empresa:
    def __init__ (self,nom='Pablito',ruc='09487374',tel='2443545',dir='av.loja '):
        self.nombre=nom
        self.ruc=ruc
        self.telefono=tel
        self.direccion=dir
    
    def mostrarEmpresa(self):
        print('Empresa:{} \nRuc:{}'.format(self.nombre,self.ruc))

class Cliente :
    def __init__ (self,nom,ced,tel):
        self.nombre=nom
        self.cedula=ced
        self.telefono=tel
    
    def mostrarCliente(self):
        print(self.nombre,self.cedula,self.telefono)

class ClienteCorporativo(Cliente):
    def __init__ (self,nom,ced,tel,contra):
        super().__init__(nom,ced,tel)
        self.__contrato=contra
    
        @property
        def contrato(self):
            return self.__contrato

        @contrato.setter
        def contrato(self,value):
            if value:
                self.__contrato=value
            else:
                self.__contrato='Sin contrato'

    def mostrarCliente(self):
        print(self.nombre,self.__contrato)

class ClientePersonal(Cliente):
    def __init__ (self,nom,ced,tel,promocion= True):
        super().__init__(nom,ced,tel)
        self.__promocion=promocion
    
    @property
    def promocion(self):
        if self.__promocion == True:
            return "10 % Descuento"
        else:
            return "No hay Promocion"


    def mostrarCliente(self):
        print(self.nombre,self.promocion)


em=Empresa()   
em.mostrarEmpresa()  
print()

cli=ClienteCorporativo('jose','435364','333','nº001')
cli.mostrarCliente()
cli.contrato='002'
print(cli.contrato)
print()

clie=ClientePersonal('jose','435364','333',True)
clie.mostrarCliente()
