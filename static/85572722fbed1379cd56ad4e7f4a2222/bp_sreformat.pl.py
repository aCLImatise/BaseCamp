from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Bp_Sreformat_Pl_V0_1_0 = CommandToolBuilder(tool="bp_sreformat.pl", base_command=["bp_sreformat.pl"], inputs=[ToolInput(tag="in_in_format", input_type=Boolean(optional=True), prefix="--informat", doc=InputDocumentation(doc="Specify the input format")), ToolInput(tag="in_out_format", input_type=Boolean(optional=True), prefix="--outformat", doc=InputDocumentation(doc="Specify the output format")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Specify the input file name\n(to pass in data on STDIN use minus sign as filename)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify the output file name\n(to pass data out on STDOUT use minus sign as filename)")), ToolInput(tag="in_msa", input_type=Boolean(optional=True), prefix="--msa", doc=InputDocumentation(doc="Specify this is multiple sequence alignment data")), ToolInput(tag="in_special", input_type=Int(optional=True), prefix="--special", doc=InputDocumentation(doc="Specify special params supported by some formats\nComma or space separated please.\nThese include:\nnointerleaved   -- for phylip,non-interleaved format\nidlinebreak     -- for phylip, makes it molphy format\npercentages     -- for clustalw, show % id per line\nflat            -- don't show start-end in seqid\nlinelength      -- line length for clustalw\nmrbayes         -- for MrBayes proper NEXUS output\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify the output file name\n(to pass data out on STDOUT use minus sign as filename)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Sreformat_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

