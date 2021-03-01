from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rsat_Count_Words_V0_1_0 = CommandToolBuilder(tool="rsat_count_words", base_command=["rsat", "count-words"], inputs=[ToolInput(tag="in_change_verbosity_level", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="#             change verbosity level (0, 1, 2)")), ToolInput(tag="in_set_oligomer_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="#             set oligomer length to # (monad size when using dyads)")), ToolInput(tag="in__input_filename", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="#             input filename")), ToolInput(tag="in_two_str", input_type=Boolean(optional=True), prefix="-2str", doc=InputDocumentation(doc="add reverse complement")), ToolInput(tag="in_one_str", input_type=Boolean(optional=True), prefix="-1str", doc=InputDocumentation(doc="do not add reverse complement")), ToolInput(tag="in_sp", input_type=Boolean(optional=True), prefix="-sp", doc=InputDocumentation(doc="#-#          spacing between the two parts of the dyads from # to #")), ToolInput(tag="in_noov", input_type=Boolean(optional=True), prefix="-noov", doc=InputDocumentation(doc="do not allow overlapping occurrences")), ToolInput(tag="in_group_rc", input_type=Boolean(optional=True), prefix="-grouprc", doc=InputDocumentation(doc="group reverse complement with the direct sequence")), ToolInput(tag="in_nogroup_rc", input_type=Boolean(optional=True), prefix="-nogrouprc", doc=InputDocumentation(doc="do not group reverse complement with the direct sequence")), ToolInput(tag="in_count_words", input_type=String(), position=0, doc=InputDocumentation(doc="AUTHOR")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="pattern discovery"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Count_Words_V0_1_0().translate("wdl", allow_empty_container=True)

