from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Novo2Maq_V0_1_0 = CommandToolBuilder(tool="novo2maq", base_command=["novo2maq"], inputs=[ToolInput(tag="in_turns_smithwaterman_check", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="|off Turns on or off the Smith-Waterman check of indels. When only indels that/n                          would be part of optimum local alignment are converted as MAQ indels. Default is off /n                          which will report all indels found by Novoalign.")), ToolInput(tag="in_produces_short_report", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Produces short report on number of alignments per reference sequence.")), ToolInput(tag="in_out_dot_map", input_type=String(), position=0, doc=InputDocumentation(doc="is file name for the output MAQ map file.")), ToolInput(tag="in_in_dot_list", input_type=String(), position=1, doc=InputDocumentation(doc="is a list of reference sequence headers to be selected. This file servers to specify\nreference sequences to be selected for conversion to the MAQ map format and also allows\ntranslation of the header sequence. Each line in the file has format:\n<refheader> <tab> <replacement header>\nAny reference sequences not listed in this file will not be converted to MAQ map file.\nUse '-' rather than a filename to specify that all sequences are to be selected and converted.")), ToolInput(tag="in_in_dot_novo", input_type=String(), position=2, doc=InputDocumentation(doc="is the Novoalign report file to be converted. Use '-' to specify that the report is to be read from stdin"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novo2Maq_V0_1_0().translate("wdl", allow_empty_container=True)

