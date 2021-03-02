from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Profile_V0_1_0 = CommandToolBuilder(tool="Profile", base_command=["Profile"], inputs=[ToolInput(tag="in_filename_fasta_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Filename = FASTA format")), ToolInput(tag="in_filename_strict_phylip", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": Filename = Strict phylip file")), ToolInput(tag="in_filename_relaxed_phylip", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Filename = Relaxed phylip file")), ToolInput(tag="in_alignmenttype_dao_where", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": AlignmentType = D|A|O where D=DNA\nA=AA and O=OTHER [default DNA]")), ToolInput(tag="in_change_default_window", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": # = Change default window size for PHI [default w = 100]")), ToolInput(tag="in__verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose [default = FALSE]")), ToolInput(tag="in_change_scanning_size", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": # = Change scanning size for regions to test [default n = 1000]")), ToolInput(tag="in_step_size_profile", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": # = Step size for profile method [default m = 25]")), ToolInput(tag="in_phi", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Profile_V0_1_0().translate("wdl", allow_empty_container=True)

