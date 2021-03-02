from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Clustering_Derep_V0_1_0 = CommandToolBuilder(tool="Clustering_derep", base_command=["Clustering", "derep"], inputs=[ToolInput(tag="in_aligned", input_type=Boolean(optional=True), prefix="--aligned", doc=InputDocumentation(doc="Dereplicate aligned sequences")), ToolInput(tag="in_formatted", input_type=Boolean(optional=True), prefix="--formatted", doc=InputDocumentation(doc="Dereplicate formated (uppercase/- = comparable,\nlowercase/. = non-comparable) aligned sequences")), ToolInput(tag="in_keep_common_gaps", input_type=Boolean(optional=True), prefix="--keep-common-gaps", doc=InputDocumentation(doc="Don't remove common gaps in output sequences")), ToolInput(tag="in_model_only", input_type=String(optional=True), prefix="--model-only", doc=InputDocumentation(doc="Dereplicate aligned sequences using mask sequence")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Write sequences to this file")), ToolInput(tag="in_qual_out", input_type=File(optional=True), prefix="--qual-out", doc=InputDocumentation(doc="Write quality sequences to this file")), ToolInput(tag="in_sorted", input_type=Boolean(optional=True), prefix="--sorted", doc=InputDocumentation(doc="Sort sequence by number of members represented")), ToolInput(tag="in_unaligned", input_type=Boolean(optional=True), prefix="--unaligned", doc=InputDocumentation(doc="Dereplicate unaligned sequences")), ToolInput(tag="in_de_replicator", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_mapping_out", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_mapping_out", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Derep_V0_1_0().translate("wdl", allow_empty_container=True)

