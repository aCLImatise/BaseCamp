from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fastafunk_Strip_V0_1_0 = CommandToolBuilder(tool="fastafunk_strip", base_command=["fastafunk", "strip"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)")), ToolInput(tag="in_in_fast_a", input_type=File(optional=True), prefix="--in-fasta", doc=InputDocumentation(doc="[<filename> ...]\nOne or more FASTA files of sequences (else reads from\nstdin)")), ToolInput(tag="in_gap", input_type=Boolean(optional=True), prefix="--gap", doc=InputDocumentation(doc="Remove gaps from sequences (Default:False)")), ToolInput(tag="in_ambiguity", input_type=Boolean(optional=True), prefix="--ambiguity", doc=InputDocumentation(doc="Remove ambiguous sites from sequences ('N')\n(Default:False)")), ToolInput(tag="in_missing", input_type=Boolean(optional=True), prefix="--missing", doc=InputDocumentation(doc="Remove missing sites from sequences ('?')\n(Default:False)")), ToolInput(tag="in_keep_alignment", input_type=Boolean(optional=True), prefix="--keep-alignment", doc=InputDocumentation(doc="Remove gaps shared by all sequences at the same site\n(Default:False)")), ToolInput(tag="in_front", input_type=Boolean(optional=True), prefix="--front", doc=InputDocumentation(doc="Remove only from the front of the sequence\n(Default:False)")), ToolInput(tag="in_back", input_type=Boolean(optional=True), prefix="--back", doc=InputDocumentation(doc="Remove only from the back of the sequence\n(Default:False)")), ToolInput(tag="in_out_fast_a", input_type=File(optional=True), prefix="--out-fasta", doc=InputDocumentation(doc="A FASTA file (else writes to stdout)\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"))], container="quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastafunk_Strip_V0_1_0().translate("wdl")

