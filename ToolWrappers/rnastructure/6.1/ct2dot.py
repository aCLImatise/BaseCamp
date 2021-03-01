from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Ct2Dot_V0_1_0 = CommandToolBuilder(tool="ct2dot", base_command=["ct2dot"], inputs=[ToolInput(tag="in_quiet", input_type=File(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress unnecessary output. This option is implied when the output file is\n'-' (STDOUT).")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="A number or name that indicates how subsequent sub-structures are formatted\n(relevant only when more than one structure is being written).\nValid values are:\n(1) simple -- Susbequent structures (after the first one) are written with\na Structure-Line  '(((....)))' only -- (no title or sequence)\n(2) side   -- A structure label is appended to the right side of each\nStructure-Line e.g. '(((....)))  ENERGY= -3.6  E.coli'.\n(3) multi  -- Susbequent structures are each written with a Title-Line\n'>TITLE' followed by a Structure-Line.\n(4) full   -- All structures written with a full header, including a\n'>TITLE' line followed by a Sequence-Line and then a Structure-Line.\nThe default is 'multi'.\n")), ToolInput(tag="in_ct_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_structure_number", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bracket_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_quiet", output_type=File(optional=True), selector=InputSelector(input_to_select="in_quiet", type_hint=File()), doc=OutputDocumentation(doc="Suppress unnecessary output. This option is implied when the output file is\n'-' (STDOUT)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ct2Dot_V0_1_0().translate("wdl", allow_empty_container=True)

