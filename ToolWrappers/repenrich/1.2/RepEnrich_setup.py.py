from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Repenrich_Setup_Py_V0_1_0 = CommandToolBuilder(tool="RepEnrich_setup.py", base_command=["RepEnrich_setup.py"], inputs=[ToolInput(tag="in_n_fragments_file_one", input_type=File(optional=True), prefix="--nfragmentsfile1", doc=InputDocumentation(doc="Output location of a description file that saves the\nnumber of fragments processed per repname. Default\n./repnames_nfragments.txt")), ToolInput(tag="in_gap_length", input_type=Int(optional=True), prefix="--gaplength", doc=InputDocumentation(doc="Length of the spacer used to build repeat\npsuedogeneomes. Default 200")), ToolInput(tag="in_flanking_length", input_type=Int(optional=True), prefix="--flankinglength", doc=InputDocumentation(doc="Length of the flanking region adjacent to the repeat\nelement that is used to build repeat psuedogeneomes.\nThe flanking length should be set according to the\nlength of your reads. Default 25")), ToolInput(tag="in_is_bed", input_type=File(optional=True), prefix="--is_bed", doc=InputDocumentation(doc="Is the annotation file a bed file. This is also a\ncompatible format. The file needs to be a tab\nseperated bed with optional fields. Ex. format chr\nstart end Name_element class family. The class and\nfamily should identical to name_element if not\napplicable. Default FALSE change to TRUE\n")), ToolInput(tag="in_annotation_file", input_type=String(), position=0, doc=InputDocumentation(doc="List annotation file. The annotation file contains the\nrepeat masker annotation for the genome of interest\nand may be downloaded at RepeatMasker.org Example\n/data/annotation/mm9/mm9.fa.out")), ToolInput(tag="in_genome_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="File name and path for genome of interest in fasta\nformat. Example /data/annotation/mm9/mm9.fa")), ToolInput(tag="in_setup_folder", input_type=String(), position=2, doc=InputDocumentation(doc="List folder to contain bamfiles for repeats and repeat\nelement psuedogenomes. Example\n/data/annotation/mm9/setup"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repenrich_Setup_Py_V0_1_0().translate("wdl", allow_empty_container=True)

