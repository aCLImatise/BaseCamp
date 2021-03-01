from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Cpat_Py_V0_1_0 = CommandToolBuilder(tool="cpat.py", base_command=["cpat.py"], inputs=[ToolInput(tag="in_gene", input_type=File(optional=True), prefix="--gene", doc=InputDocumentation(doc="RNAs either in BED or FASTA format: If this is BED\nformat file, '-r/--ref' must also be specified; if\nthis is RNA sequence file in FASTA format, ignore the\n' r/--ref ' option. The input BED or FASTA file could\nbe regular text file or compressed file (*.gz, *.bz2)\nor accessible url (http://, https://, ftp://).")), ToolInput(tag="in_outfile", input_type=Int(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file. Tab separated text file: geneID <tab>\nmRNA size <tab> ORF size <tab> Fickett Score <tab>\nHexamer Score<tab>Coding Probability.")), ToolInput(tag="in_hex", input_type=String(optional=True), prefix="--hex", doc=InputDocumentation(doc="Prebuilt hexamer frequency table (Human, Mouse, Fly,\nZebrafish). Run 'make_hexamer_tab.py' to make this\ntable out of your own training dataset.")), ToolInput(tag="in_log_it_model", input_type=String(optional=True), prefix="--logitModel", doc=InputDocumentation(doc="Prebuilt training model (Human, Mouse, Fly,\nZebrafish). Run 'make_logitModel.py' to build logit\nmodel out of your own training datset")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference genome sequences in FASTA format. Ignore\nthis option if FASTA file was provided to '-g/--gene'.\nReference genome file will be indexed automatically\n(produce *.fai file along with the original *.fa file\nwithin the same directory) if hasn't been done.")), ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="Start codon (DNA sequence, so use 'T' instead of 'U')\nused to define open reading frame (ORF). default=ATG")), ToolInput(tag="in_stop", input_type=String(optional=True), prefix="--stop", doc=InputDocumentation(doc="Stop codon (DNA sequence, so use 'T' instead of 'U')\nused to define open reading frame (ORF). Multiple stop\ncodons should be separated by ','. default=TAG,TAA,TGA\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpat_Py_V0_1_0().translate("wdl", allow_empty_container=True)

