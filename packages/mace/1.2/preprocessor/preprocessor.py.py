from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Preprocessor_Py_V0_1_0 = CommandToolBuilder(tool="preprocessor.py", base_command=["preprocessor.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--inputFile", doc=InputDocumentation(doc="Input file in BAM format. BAM file must be sorted and\nindexed using samTools. Replicates separated by\ncomma(',') e.g. '-i rep1.bam,rep2.bam,rep3.bam'")), ToolInput(tag="in_chrom_size", input_type=Int(optional=True), prefix="--chromSize", doc=InputDocumentation(doc="Chromosome size file. Tab or space separated text file\nwith 2 columns: first column is chromosome name,\nsecond column is size of the chromosome.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--outPrefix", doc=InputDocumentation(doc="Prefix of output wig files(s). 'Prefix_Forward.wig'\nand 'Prefix_Reverse.wig' will be generated")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmerSize", doc=InputDocumentation(doc="Kmer size [6,12] to correct nucleotide composition\nbias. kmerSize < 0.5*read_lenght. larger KmerSize\nmight make program slower. Set kmerSize = 0 to turn\noff nucleotide compsition bias correction. default=6")), ToolInput(tag="in_bin", input_type=Int(optional=True), prefix="--bin", doc=InputDocumentation(doc="Chromosome chunk size. Each chomosome will be cut into\nsmall chunks of this size. Decrease chunk size will\nsave more RAM. default=100000 (bp)")), ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="--depth", doc=InputDocumentation(doc="Reference reads count (default = 10 million).\nSequencing depth will be normailzed to this number, so\nthat wig files are comparable between replicates.")), ToolInput(tag="in_q_cut", input_type=Int(optional=True), prefix="--qCut", doc=InputDocumentation(doc="phred scaled mapping quality threshhold to determine\n'uniqueness' of alignments. default=30")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="methods ('EM', 'AM', 'GM', or 'SNR') used to\nconsolidate replicates and reduce noise. 'EM' =\nEntropy weighted mean, 'AM'=Arithmetic mean,\n'GM'=Geometric mean, 'SNR'=Signal-to-noise ratio.\ndefault=EM\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preprocessor_Py_V0_1_0().translate("wdl", allow_empty_container=True)

