from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ovstorebuild_V0_1_0 = CommandToolBuilder(tool="ovStoreBuild", base_command=["ovStoreBuild"], inputs=[ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="path to overlap store to create")), ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to a sequence store")), ToolInput(tag="in_path_ovstoreconfig_configuration", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="path to ovStoreConfig configuration file")), ToolInput(tag="in_filter_overlaps_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="filter overlaps above e fraction error")), ToolInput(tag="in_be_overly_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="be overly verbose")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovstorebuild_V0_1_0().translate("wdl", allow_empty_container=True)

