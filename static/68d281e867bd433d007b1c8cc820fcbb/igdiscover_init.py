from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Igdiscover_Init_V0_1_0 = CommandToolBuilder(tool="igdiscover_init", base_command=["igdiscover", "init"], inputs=[ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Directory with V.fasta, D.fasta and J.fasta files. If\nnot given, a dialog is shown.")), ToolInput(tag="in_single_reads", input_type=File(optional=True), prefix="--single-reads", doc=InputDocumentation(doc="File with single-end reads (.fasta.gz or .fastq.gz)")), ToolInput(tag="in_reads_one", input_type=Int(optional=True), prefix="--reads1", doc=InputDocumentation(doc="First paired-end read file. The second is found\nautomatically. Must be a .fastq.gz file. If not given,\na dialog is shown.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Init_V0_1_0().translate("wdl", allow_empty_container=True)

