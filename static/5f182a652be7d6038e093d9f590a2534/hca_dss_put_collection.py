from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int

Hca_Dss_Put_Collection_V0_1_0 = CommandToolBuilder(tool="hca_dss_put_collection", base_command=["hca", "dss", "put-collection"], inputs=[ToolInput(tag="in_contents", input_type=Array(t=String(), optional=True), prefix="--contents", doc=InputDocumentation(doc="A list of objects describing links to files, bundles, other collections, and metadata fragments that are part of the collection.")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="A long description of the collection, formatted in Markdown.")), ToolInput(tag="in_details", input_type=String(optional=True), prefix="--details", doc=InputDocumentation(doc="Supplementary JSON metadata for the collection.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="A short name identifying the collection.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to write to.")), ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the collection."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Put_Collection_V0_1_0().translate("wdl", allow_empty_container=True)

