from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Fragfinder_V0_1_0 = CommandToolBuilder(tool="fragfinder", base_command=["fragfinder"], inputs=[ToolInput(tag="in__contains_model", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=", which contains a MODEL, or")), ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="-model_file", doc=InputDocumentation(doc=", where file contains any model structure, or")), ToolInput(tag="in_track_mod", input_type=File(optional=True), prefix="-trackmod", doc=InputDocumentation(doc=",file2,..., for a multitrack model, or")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="-query", doc=InputDocumentation(doc="for a Smith and Waterman query model.")), ToolInput(tag="in_model_library", input_type=File(optional=True), prefix="-modellibrary", doc=InputDocumentation(doc=",...           or ....")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc="Database to search for fragments.  Required.")), ToolInput(tag="in_first_sequence", input_type=String(optional=True), prefix="-firstsequence", doc=InputDocumentation(doc="Target single-sequence. Optional.\nif present, will be first aligned sequence")), ToolInput(tag="in_fra_glen", input_type=Int(optional=True), prefix="-fraglen", doc=InputDocumentation(doc="Fragment length [10]")), ToolInput(tag="in_num_per_match", input_type=Boolean(optional=True), prefix="-numpermatch", doc=InputDocumentation(doc="#   Number of best fragments per bin [5]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fragfinder_V0_1_0().translate("wdl", allow_empty_container=True)

