#!/usr/bin/env perl

use strict;
use warnings;

my $BlueF = "\e[1;34m";
my $cyan = "\e[0;36m";
my $red = "\e[1;31m";
my $yellow = "\e[1;33m";
my $opcao;
my $cp = "";
my $cp2 = "";
my $cp3 = "";


do  {

print $red, "
  _      ____              
 | | /| / / /  ___ _______ 
 | |/ |/ / _ \/ -_) __/ -_)
 |__/|__/_//_/\__/_/  \__/ 
                           
 ", "\n";                                                                                                                
                                                        

    print $yellow, "\n============= MENU ==============\n";
    print"\n";
    print $cyan, "1.Rastrear encomendas dos Correios\n";
    print $cyan,"2.Rastrear encomendas da Jadlog\n";
    print $cyan,"3.Rastrar encomendas da Sequoia\n";
    print $cyan,"4.Baixar e instalar dependências\n";
    print $cyan,"0. Sair\n";
    print $yellow,"\nDigite uma opção: ";
    $opcao = <>;
    chomp $opcao;

    if ($opcao == 1) {
        
        print("Digite o código: ");
        $cp = <STDIN>;
        system ("rastreio correios $cp");
    } elsif ($opcao == 2) {
        
        print("Digite o código: ");
        $cp2 = <STDIN>;
        system ("cade_minha_encomenda jadlog $cp2");
    } elsif ($opcao == 3) {
    
       print("Digite o código: ");
        $cp3 = <STDIN>;
        system ("cade_minha_encomenda sequoia $cp3");
    } elsif ($opcao == 4) {
        print "Fazendo download das bibliotecas....\n";
        system ("pip install pyrastreio");
        system ("pip install correios");
        system ("pip install jadlog");
        system ("pip install sequoia");
        system ("clear");
        sleep(0.5);

    } elsif ($opcao != 0) {
        # opção inválida
        print "Opção inválida. Tente novamente.\n";
    }

} while ($opcao != 0);

print "Saindo do programa...\n";
