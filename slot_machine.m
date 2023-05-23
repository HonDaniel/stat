%erme, napok es a penz.
ermek = 10000;
penz = -(ermek * 100);
napok = 30;
penzek2 = 0;
penzek = [];
disp('Penz a starttol:'), disp(penz);

%Szimbolumok.
citrom_dupla = 0;
cseresznye_dupla = 0;
csirke_dupla = 0;
barack_dupla = 0;
harang_dupla = 0;
dinnye_dupla = 0;
bar_dupla = 0;
hetes_dupla = 0;

citrom_tripla = 0;
cseresznye_tripla = 0;
csirke_tripla = 0;
barack_tripla = 0;
harang_tripla = 0;
dinnye_tripla = 0;
bar_tripla = 0;
hetes_tripla = 0;

%A harom kerek szimbolumai kulon tomben.
e_szimbolumok = [1, 1, 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 6, 6, 7, 7, 7, 8]; % +7 db citrom.
m_szimbolumok = [1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 7, 7, 8]; % +4 db citrom.
h_szimbolumok = [1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 7, 8]; % +5 db cseresznye.

%For ciklus ami az indexek alapjan ad sorszamot 1-8 -ig es minden szamhoz hozzarendeli a megfelelo szimbolumot.
for i=1:napok
    for j=1:ermek

        %Az 1. szimbolum tombbel general egy random indexet majd az indextol fuggoen hozzarendeli a megfelelo sorszamot.
        e_kerek = randperm(length(e_szimbolumok), 1);
        if e_kerek >= 0 && e_kerek <= 7
           e_kerek = 1;
        elseif e_kerek > 7 && e_kerek <= 9
           e_kerek = 2;
        elseif e_kerek > 9 && e_kerek <= 14
           e_kerek = 3;
        elseif e_kerek > 14 && e_kerek <= 21
           e_kerek = 4;
        elseif e_kerek > 21 && e_kerek <= 22
           e_kerek = 5;
        elseif e_kerek > 22 && e_kerek <= 24
           e_kerek = 6;
        elseif e_kerek > 24 && e_kerek <= 27
           e_kerek = 7;
        elseif e_kerek > 27
           e_kerek = 8;
        end

        %A 2. szimbolum tombbel csinalja ugyanazt.
        m_kerek = randperm(length(m_szimbolumok), 1);
        if m_kerek >= 0 && m_kerek <= 4
           m_kerek = 1;
        elseif m_kerek > 4 && m_kerek <= 10
           m_kerek = 2;
        elseif m_kerek > 10 && m_kerek <= 15
           m_kerek = 3;
        elseif m_kerek > 15 && m_kerek <= 18
           m_kerek = 4;
        elseif m_kerek > 18 && m_kerek <= 23
           m_kerek = 5;
        elseif m_kerek > 23 && m_kerek <= 25
           m_kerek = 6;
        elseif m_kerek > 25 && m_kerek <= 27
           m_kerek = 7;
        elseif m_kerek > 27
           m_kerek = 8;
        end

        %A 3.  szimbolum tombbel csinalja ugyanazt.
        h_kerek = randperm(length(h_szimbolumok), 1);
        if h_kerek >= 0 && h_kerek <= 4
           h_kerek = 1;
        elseif h_kerek > 4 && h_kerek <= 9
           h_kerek = 2;
        elseif h_kerek > 9 && h_kerek <= 13
           h_kerek = 3;
        elseif h_kerek > 13 && h_kerek <= 16
           h_kerek = 4;
        elseif h_kerek > 16 && h_kerek <= 24
           h_kerek = 5;
        elseif h_kerek > 24 && h_kerek <= 26
           h_kerek = 6;
        elseif h_kerek > 26 && h_kerek <= 27
           h_kerek = 7;
        elseif h_kerek > 27
           h_kerek = 8;
        end

        %Megnezi, hogy az 1. kerek szimboluma megegyezik-e a 2. kerek szimbolumaval de a 3.-kal nem egyezhet meg.
        if e_kerek == m_kerek && e_kerek ~= h_kerek
            if e_kerek == 1
                citrom_dupla = citrom_dupla + 1;
                penz = penz + 50;
            elseif e_kerek == 2
                cseresznye_dupla = cseresznye_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 3
                csirke_dupla = csirke_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 4
                barack_dupla = barack_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 5
                harang_dupla = harang_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 6
                dinnye_dupla = dinnye_dupla + 1;
                penz = penz + 300;
            elseif e_kerek == 7
                bar_dupla = bar_dupla + 1;
                penz = penz + 300;
            elseif e_kerek == 8
                hetes_dupla = hetes_dupla + 1;
                penz = penz + 500;
            end
        end

        %Megnezi ugyanugy az 1. es a 3. kozott.
                citrom_dupla = citrom_dupla + 1;
        if e_kerek == h_kerek && e_kerek ~= m_kerek
            if e_kerek == 1
                penz = penz + 50;
            elseif e_kerek == 2
                cseresznye_dupla = cseresznye_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 3
                csirke_dupla = csirke_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 4
                barack_dupla = barack_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 5
                harang_dupla = harang_dupla + 1;
                penz = penz + 100;
            elseif e_kerek == 6
                dinnye_dupla = dinnye_dupla + 1;
                penz = penz + 300;
            elseif e_kerek == 7
                bar_dupla = bar_dupla + 1;
                penz = penz + 300;
            elseif e_kerek == 8
                hetes_dupla = hetes_dupla + 1;
                penz = penz + 500;
            end
        end

        %Megnezi ugyanugy a 2. es 3. kozott.
        if m_kerek == h_kerek && m_kerek ~= e_kerek
            if m_kerek == 1
                citrom_dupla = citrom_dupla + 1;
                penz = penz + 50;
            elseif m_kerek == 2
                cseresznye_dupla = cseresznye_dupla + 1;
                penz = penz + 100;
            elseif m_kerek == 3
                csirke_dupla = csirke_dupla + 1;
                penz = penz + 100;
            elseif m_kerek == 4
                barack_dupla = barack_dupla + 1;
                penz = penz + 100;
            elseif m_kerek == 5
                harang_dupla = harang_dupla + 1;
                penz = penz + 100;
            elseif m_kerek == 6
                dinnye_dupla = dinnye_dupla + 1;
                penz = penz + 300;
            elseif m_kerek == 7
                bar_dupla = bar_dupla + 1;
                penz = penz + 300;
            elseif m_kerek == 8
                hetes_dupla = hetes_dupla + 1;
                penz = penz + 500;
            end
        end

        %Megnezi, hogy az 1., 2. es 3. kerek szimbolumai egyeznek-e.
        if e_kerek == m_kerek && e_kerek == h_kerek && m_kerek == h_kerek
            if e_kerek == 1
                citrom_tripla = citrom_tripla + 1;
                penz = penz + 200;
            elseif e_kerek == 2
                cseresznye_tripla = cseresznye_tripla + 1;
                penz = penz + 400;
            elseif e_kerek == 3
                csirke_tripla = csirke_tripla + 1;
                penz = penz + 600;
            elseif e_kerek == 4
                barack_tripla = barack_tripla + 1;
                penz = penz + 1200;
            elseif e_kerek == 5
                harang_tripla = harang_tripla + 1;
                penz = penz + 2000;
            elseif e_kerek == 6
                dinnye_tripla = dinnye_tripla + 1;
                penz = penz + 25000;
            elseif e_kerek == 7
                bar_tripla = bar_tripla + 1;
                penz = penz + 50000;
            elseif e_kerek == 8
                hetes_tripla = hetes_tripla + 1;
                penz = penz + 300000;
            end
        end
    end

    penzek2 =  penzek2 + penz;
    penzek(end+1) = penz;
    penz = -(ermek * 100);
end

%Egy tombbe csoportositjuk a kapott eredmenyeket.
eredmeny_tripla = [citrom_tripla cseresznye_tripla csirke_tripla barack_tripla harang_tripla dinnye_tripla bar_tripla hetes_tripla];
eredmeny_dupla = [citrom_dupla cseresznye_dupla csirke_dupla barack_dupla harang_dupla dinnye_dupla bar_dupla hetes_dupla];

%Grafikonok.
figure(1)
bar(eredmeny_tripla, .40, "red");
xticks(1:8);
xticklabels( {'Citrom' , 'Cseresznye' , 'Csirke' , 'Barack' , 'Harang' , 'Dinnye' , 'Bar' , 'Hetes'} );
ylabel('Darabszama a triplaknak');
xlabel('Triplak az adott szimbolumbol');
text(1:length(eredmeny_tripla),eredmeny_tripla,num2str(eredmeny_tripla'),'verticalalignment','bottom','horizontalalignment','center');
box off;

figure(2)
bar(eredmeny_dupla, .40, "blue");
xticks(1:8);
xticklabels( {'Citrom' , 'Cseresznye' , 'Csirke' , 'Barack' , 'Harang' , 'Dinnye' , 'Bar' , 'Hetes'} );
ylabel('Darabszama a duplaknak');
xlabel('Duplak az adott szimbolumbol');
text(1:length(eredmeny_dupla),eredmeny_dupla,num2str(eredmeny_dupla'),'verticalalignment','bottom','horizontalalignment','center');
box off;

figure(3)
bar(penzek, "green");
xticks(1:napok);
ylabel('A nyereseg vagy veszteseg');
xlabel('A napok szoma');
text(1:length(penzek),penzek,num2str(penzek'),'verticalalignment','bottom','horizontalalignment','center');
box off;


%Eredmeny
if penzek2 >=0
    disp('Az osszes nyereseg a napok alatt:'), disp(penzek2);
else
    disp('A osszes veszteseg a napok alatt:'), disp(penzek2);
end
