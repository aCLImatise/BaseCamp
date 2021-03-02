from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tripaille_Expression_Delete_Biomaterials_V0_1_0 = CommandToolBuilder(tool="tripaille_expression_delete_biomaterials", base_command=["tripaille", "expression", "delete_biomaterials"], inputs=[ToolInput(tag="in_names", input_type=String(optional=True), prefix="--names", doc=InputDocumentation(doc="JSON list of biomaterial names to delete. (optional)")), ToolInput(tag="in_organism_id", input_type=String(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="Organism id from which to delete biomaterials (optional)")), ToolInput(tag="in_analysis_id", input_type=String(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="Analysis id from which to delete biomaterials (optional)")), ToolInput(tag="in_job_name", input_type=String(optional=True), prefix="--job_name", doc=InputDocumentation(doc="Name of the job (optional)")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Return immediately without waiting for job completion")), ToolInput(tag="in_status", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Expression_Delete_Biomaterials_V0_1_0().translate("wdl", allow_empty_container=True)

