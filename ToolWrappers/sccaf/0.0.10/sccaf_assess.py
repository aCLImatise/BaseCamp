from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Sccaf_Assess_V0_1_0 = CommandToolBuilder(tool="sccaf_assess", base_command=["sccaf-assess"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Path to input in AnnData or Loom")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output-table", doc=InputDocumentation(doc="Path for output file with table of accuracy and other\nmetrics (required if iterations > 1)")), ToolInput(tag="in_external_clustering_tsv", input_type=File(optional=True), prefix="--external-clustering-tsv", doc=InputDocumentation(doc="Path to external clustering in TSV")), ToolInput(tag="in_slot_for_existing_clustering", input_type=String(optional=True), prefix="--slot-for-existing-clustering", doc=InputDocumentation(doc="Use clustering pre-computed in the input object,\navailable in this slot of the object.")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="Number of times to iterate the assesment to build\ndistributions of accuracies")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of processors to use")), ToolInput(tag="in_use_pc_a", input_type=Boolean(optional=True), prefix="--use-pca", doc=InputDocumentation(doc="Use PCA components for assesment (needs to be\navailable in the ann data ) (default: False)\n"))], outputs=[ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Path for output file with table of accuracy and other\nmetrics (required if iterations > 1)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sccaf_Assess_V0_1_0().translate("wdl", allow_empty_container=True)

