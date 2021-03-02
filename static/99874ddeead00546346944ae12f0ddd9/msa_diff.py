from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Msa_Diff_V0_1_0 = CommandToolBuilder(tool="msa_diff", base_command=["msa_diff"], inputs=[ToolInput(tag="in_format_one", input_type=Int(optional=True), prefix="--format1", doc=InputDocumentation(doc="|SS|PHYLIP|MPM|MAF\nFormat of first alignment (default is to guess format from file contents).")), ToolInput(tag="in_format_two", input_type=Int(optional=True), prefix="--format2", doc=InputDocumentation(doc="|SS|PHYLIP|MPM|MAF\nFormat of second alignment (default is to guess format from file contents).")), ToolInput(tag="in_alphabet", input_type=String(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="Use given string for alphabet.  Can be used to accommodate\nnonstandard characters (e.g., 'b' for any base or '^' for insertion\ngaps, '.' for deletion gaps).")), ToolInput(tag="in_ignore_base_id", input_type=Boolean(optional=True), prefix="--ignore-base-id", doc=InputDocumentation(doc="Ignore identity of bases; consider all alphabetical characters\nequivalent (e.g., A, C, G, T, N, X, b).")), ToolInput(tag="in_ignore_gap_type", input_type=Boolean(optional=True), prefix="--ignore-gap-type", doc=InputDocumentation(doc="Ignore type of gap; consider '-', '^', and '.' all equivalent.")), ToolInput(tag="in_alignment_one_dot_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_two_dot_fa", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msa_Diff_V0_1_0().translate("wdl", allow_empty_container=True)

