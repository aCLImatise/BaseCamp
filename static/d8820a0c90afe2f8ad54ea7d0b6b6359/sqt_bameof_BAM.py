from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Sqt_Bameof_Bam_V0_1_0 = CommandToolBuilder(tool="sqt_bameof_BAM", base_command=["sqt", "bameof", "BAM"], inputs=[ToolInput(tag="in_align", input_type=String(), position=0, doc=InputDocumentation(doc="Compare two strings")), ToolInput(tag="in_bam_two_fast_q", input_type=Int(), position=1, doc=InputDocumentation(doc="Extract all reads from a BAM file that map to a\ncertain location, but try hard")), ToolInput(tag="in_fast_xmod", input_type=String(), position=2, doc=InputDocumentation(doc="Modify FASTA and FASTQ files by picking subsets and\nmodifying individual entries.")), ToolInput(tag="in_q_gram_freq", input_type=String(), position=3, doc=InputDocumentation(doc="Print q-gram (also called k-mer) frequencies in a\nFASTA or FASTQ file.")), ToolInput(tag="in_chars", input_type=String(), position=4, doc=InputDocumentation(doc="Print the number of characters in a string.")), ToolInput(tag="in_fast_agrep", input_type=String(), position=5, doc=InputDocumentation(doc="Search for a IUPAC string in the sequences of a FASTA")), ToolInput(tag="in_file_dot", input_type=File(), position=6, doc=InputDocumentation(doc="readcov             Print a report for individual reads in a SAM/BAM file.")), ToolInput(tag="in_random_seq", input_type=String(), position=7, doc=InputDocumentation(doc="Generate random sequences in FASTA format")), ToolInput(tag="in_sam_se_top", input_type=String(), position=8, doc=InputDocumentation(doc="Perform set operation on two SAM/BAM files.")), ToolInput(tag="in_bame_of", input_type=String(), position=9, doc=InputDocumentation(doc="Check whether the EOF marker is present in BAM files.")), ToolInput(tag="in_read_len_histo", input_type=String(), position=10, doc=InputDocumentation(doc="Print and optionally plot a read length histogram of\none or more FASTA or FASTQ")), ToolInput(tag="in_cut_vect", input_type=String(), position=11, doc=InputDocumentation(doc="Remove vector sequence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqt_Bameof_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

