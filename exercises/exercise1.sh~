1:less TAIR9_mRNA.bed

2:grep chr1 TAIR9_mRNA.bed | grep + | cut -f 4 | sort | uniq | wc -l
4366

3:cut -f11 TAIR9_mRNA.bed | sed 's/,/\t/g'  | head | awk '{print$NF}' | uniq | sort -nr
573
429
275
263
257
101

4:grep chr1 TAIR9_mRNA.bed | cut -f11 | sed 's/,/\n/g' | sort -nr | head
7713
5616
5239
4755
4154
4075
3897
3882
3875
3762

5:grep chr1 TAIR9_mRNA.bed | cut -f4,10 | sort -k2,2nr | uniq | head
AT1G67120.1	73
AT1G48090.1	65
AT1G64790.1	60
AT1G50030.1	56
AT1G50030.2	56
AT1G48090.2	55
AT1G02080.1	49
AT1G08260.2	49
AT1G08260.1	48
AT1G67140.1	48


