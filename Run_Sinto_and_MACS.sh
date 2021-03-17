# HH6
cd /data/Austin/10XscATAC/HH6_10xscATAC_Lane1/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH6" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH8
cd /data/Austin/10XscATAC/HH8_10xscATAC_Lane1_Lane2/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH8" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH10
cd /data/Austin/10XscATAC/HH10_10xscATAC_Lane1_Lane2/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH10" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH12
cd /data/Austin/10XscATAC/HH12_10xscATAC_Lane1_Lane2/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH12" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH14
cd /data/Austin/10XscATAC/HH14_10xscATAC_Lane1_Lane2/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH14" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH16
cd /data/Austin/10XscATAC/HH16_10xscATAC_Lane1/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH16" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2

# HH18
cd /data/Austin/10XscATAC/HH18_10xscATAC_Lane1/outs/

mkdir split_bams
cd split_bams
sinto filterbarcodes -b ../possorted_bam.bam -c ../cell_clusters.txt -p 62

run_macs2() {
    macs2 callpeak -t $1 -f BAMPE -g 1218492533 \
    --outdir /data/Austin/10XscATAC/MACS2_Peaks/ \
    -n "${1}_HH18" \
    --nomodel --shift 37 --extsize 73
  }
export -f run_macs2

find . -name "*bam" | parallel -I% --max-args 1 run_macs2
