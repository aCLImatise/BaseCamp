from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Siann_Py_V0_1_0 = CommandToolBuilder(tool="siann.py", base_command=["siann.py"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="database of reference genomes to use")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use for alignment (all by\ndefault)")), ToolInput(tag="in_paired", input_type=String(optional=True), prefix="--paired", doc=InputDocumentation(doc="second set of reads in pair (if any)")), ToolInput(tag="in_report", input_type=Boolean(optional=True), prefix="--report", doc=InputDocumentation(doc="turn off the generation of a report")), ToolInput(tag="in_reads_out", input_type=Boolean(optional=True), prefix="--reads_out", doc=InputDocumentation(doc="turn on the output of species- and strain-specific")), ToolInput(tag="in_set_reads_fastqfasta", input_type=String(optional=True), prefix="--reads", doc=InputDocumentation(doc="Set of reads (FASTQ/FASTA) to be processed")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Prefix for output files")), ToolInput(tag="in__keepsam_retain", input_type=String(), position=0, doc=InputDocumentation(doc="--keep_sam            retain the aligned reads in SAM format"))], outputs=[], container="quay.io/biocontainers/siann:1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Siann_Py_V0_1_0().translate("wdl")

