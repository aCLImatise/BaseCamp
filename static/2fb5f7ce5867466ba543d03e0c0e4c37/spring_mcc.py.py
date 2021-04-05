from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Spring_Mcc_Py_V0_1_0 = CommandToolBuilder(tool="spring_mcc.py", base_command=["spring_mcc.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input prediction file (2-columns).")), ToolInput(tag="in_bio_grid", input_type=File(optional=True), prefix="--biogrid", doc=InputDocumentation(doc="BioGRID interaction database file")), ToolInput(tag="in_locations", input_type=String(optional=True), prefix="--locations", doc=InputDocumentation(doc="UniProt export table with subcellular locations")), ToolInput(tag="in_region_a", input_type=String(optional=True), prefix="--region_a", doc=InputDocumentation(doc="First subcellular location")), ToolInput(tag="in_region_b", input_type=String(optional=True), prefix="--region_b", doc=InputDocumentation(doc="Second subcellular location")), ToolInput(tag="in_negative", input_type=Int(optional=True), prefix="--negative", doc=InputDocumentation(doc="Negative set (2-columns)")), ToolInput(tag="in_throughput", input_type=String(optional=True), prefix="--throughput", doc=InputDocumentation(doc="Throughput (low/high)")), ToolInput(tag="in_experiment", input_type=String(optional=True), prefix="--experiment", doc=InputDocumentation(doc="Experiment Title")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output (png)\n"))], outputs=[], container="quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spring_Mcc_Py_V0_1_0().translate("wdl")

