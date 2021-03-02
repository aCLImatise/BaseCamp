from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Read_Hexamer_Py_V0_1_0 = CommandToolBuilder(tool="read_hexamer.py", base_command=["read_hexamer.py"], inputs=[ToolInput(tag="in_input", input_type=Int(optional=True), prefix="--input", doc=InputDocumentation(doc="Read sequence in fasta or fastq format. Multiple\nfasta/fastq files should be separated by ','. For\nexample: read.fq,read2.fa,read3,fa")), ToolInput(tag="in_ref_genome", input_type=String(optional=True), prefix="--refgenome", doc=InputDocumentation(doc="Reference genome sequence in fasta format. Optional")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference mRNA sequence in fasta format. Optional\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Hexamer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

