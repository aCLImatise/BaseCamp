from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Hp_Assemble_Scaffold_V0_1_0 = CommandToolBuilder(tool="hp_assemble_scaffold", base_command=["hp_assemble_scaffold"], inputs=[ToolInput(tag="in_contigs_fa", input_type=File(optional=True), prefix="--contigs_fa", doc=InputDocumentation(doc="Fasta file with assembled contigs")), ToolInput(tag="in_ref_fa", input_type=File(optional=True), prefix="--ref_fa", doc=InputDocumentation(doc="Fasta file with reference genome to scaffold against")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_seqname", input_type=Int(optional=True), prefix="--seqname", doc=InputDocumentation(doc="Name to append to scaffold sequence. (default:\nsample01)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Additional options (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hp_Assemble_Scaffold_V0_1_0().translate("wdl")

