from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Indelhistory_V0_1_0 = CommandToolBuilder(tool="indelHistory", base_command=["indelHistory"], inputs=[ToolInput(tag="in_msa_format", input_type=File(optional=True), prefix="--msa-format", doc=InputDocumentation(doc="|MAF|SS|....\nRead alignment in specified file format (default FASTA).")), ToolInput(tag="in_output_alignment", input_type=Boolean(optional=True), prefix="--output-alignment", doc=InputDocumentation(doc="Instead of a summary of indels only, output an alignment in FASTA\nformat of sequences for all ancestral and leaf nodes.")), ToolInput(tag="in_read_history", input_type=File(optional=True), prefix="--read-history", doc=InputDocumentation(doc="Read an indel history directly from the specified file.  Useful for\ndebugging.  The alignment and tree arguments are not required;\nhowever in an alignment is given with --read-history and\n--output-alignment, then actual bases can be output for leaf\nspecies.")), ToolInput(tag="in_i_a_names", input_type=Boolean(optional=True), prefix="--ia-names", doc=InputDocumentation(doc="Assume ancestral sequences in alignment.fa are named according to\nthe convention used by Mathieu Blanchette's inferAncestors program,\ne.g., 'RAT+MOUSE+RABBIT+' for the last common ancestor of 'rat',\n'mouse', and 'rabbit'.")), ToolInput(tag="in_format_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The specified alignment may either contain sequences"))], outputs=[ToolOutput(tag="out_read_history", output_type=File(optional=True), selector=InputSelector(input_to_select="in_read_history", type_hint=File()), doc=OutputDocumentation(doc="Read an indel history directly from the specified file.  Useful for\ndebugging.  The alignment and tree arguments are not required;\nhowever in an alignment is given with --read-history and\n--output-alignment, then actual bases can be output for leaf\nspecies."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Indelhistory_V0_1_0().translate("wdl", allow_empty_container=True)

