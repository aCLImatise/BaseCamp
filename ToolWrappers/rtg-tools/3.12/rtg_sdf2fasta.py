from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Rtg_Sdf2Fasta_V0_1_0 = CommandToolBuilder(tool="rtg_sdf2fasta", base_command=["rtg", "sdf2fasta"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="SDF containing sequences")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename (extension added if not present). Use\n'-' to write to standard output")), ToolInput(tag="in_end_id", input_type=Int(optional=True), prefix="--end-id", doc=InputDocumentation(doc="exclusive upper bound on sequence id")), ToolInput(tag="in_id_file", input_type=File(optional=True), prefix="--id-file", doc=InputDocumentation(doc="file containing sequence ids, or sequence names if")), ToolInput(tag="in_taxons", input_type=Boolean(optional=True), prefix="--taxons", doc=InputDocumentation(doc="interpret supplied sequence as taxon ids instead of\nnumeric sequence ids")), ToolInput(tag="in_interleave", input_type=File(optional=True), prefix="--interleave", doc=InputDocumentation(doc="interleave paired data into a single output file.\nDefault is to split to separate output files")), ToolInput(tag="in_line_length", input_type=Int(optional=True), prefix="--line-length", doc=InputDocumentation(doc="maximum number of nucleotides to print on a line of\noutput. A value of 0 indicates no limit (Default is 0)")), ToolInput(tag="in_no_gzip", input_type=Boolean(optional=True), prefix="--no-gzip", doc=InputDocumentation(doc="do not gzip the output")), ToolInput(tag="in_ids", input_type=String(), position=0, doc=InputDocumentation(doc="--start-id=INT    inclusive lower bound on sequence id"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename (extension added if not present). Use\n'-' to write to standard output")), ToolOutput(tag="out_interleave", output_type=File(optional=True), selector=InputSelector(input_to_select="in_interleave", type_hint=File()), doc=OutputDocumentation(doc="interleave paired data into a single output file.\nDefault is to split to separate output files"))], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Sdf2Fasta_V0_1_0().translate("wdl")

