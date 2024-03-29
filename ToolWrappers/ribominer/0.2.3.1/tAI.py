from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Tai_V0_1_0 = CommandToolBuilder(tool="tAI", base_command=["tAI"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file(s) in fasta format. All files should be\nsplit by comma e.g. 1.fasta,2.fasta,3.fasta[required]\n. Note: input sequence must be cds sequences which\ncould be generated by GetProteinCodingSequence.py.")), ToolInput(tag="in_trna_copy_numbers", input_type=File(optional=True), prefix="--tRNA_copy_numbers", doc=InputDocumentation(doc="tRNA copy numbers file.")), ToolInput(tag="in_ot_put_prefix", input_type=String(optional=True), prefix="--otput_prefix", doc=InputDocumentation(doc="Prefix of output files.[required]")), ToolInput(tag="in_trans_file_legend", input_type=File(optional=True), prefix="--trans_file_legend", doc=InputDocumentation(doc="The legend of each fasta files, comma split. e.g.\n'condition1,condition2,condition3' [required]")), ToolInput(tag="in_upstream_codon", input_type=Int(optional=True), prefix="--upstream_codon", doc=InputDocumentation(doc="Upstream codon corresponding to start codon (codon\nunit). While corresponding to stop codon, it is the\ndownstream codon.default=0")), ToolInput(tag="in_downstream_codon", input_type=Int(optional=True), prefix="--downstream_codon", doc=InputDocumentation(doc="Downstream codon corresponding to start codon (codon\nunit). While corresponding to stop codon, it is the\nupstream codon.default=500")), ToolInput(tag="in_table", input_type=Int(optional=True), prefix="--table", doc=InputDocumentation(doc="Which genetic code to use. default is the standard\ncode.table = 1, is the standard table, ref: https://ww\nw.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\n"))], outputs=[], container="quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tai_V0_1_0().translate("wdl")

