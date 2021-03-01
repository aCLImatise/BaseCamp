from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean, String

Crb_Blast_V0_1_0 = CommandToolBuilder(tool="crb_blast", base_command=["crb-blast"], inputs=[ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="query fasta file")), ToolInput(tag="in_target", input_type=File(optional=True), prefix="--target", doc=InputDocumentation(doc="target fasta file")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="e-value cut off for BLAST. Format 1e-5 (default:\n1.0e-05)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to run BLAST with (default: 1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file as tsv")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="split the fasta files into chunks and run multiple blast\njobs and then combine them.")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file as tsv"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crb_Blast_V0_1_0().translate("wdl", allow_empty_container=True)

