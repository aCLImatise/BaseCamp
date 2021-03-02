from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sketchy_Survey_Popmap_V0_1_0 = CommandToolBuilder(tool="sketchy_survey_popmap", base_command=["sketchy", "survey", "popmap"], inputs=[ToolInput(tag="in_ssh", input_type=File(optional=True), prefix="--ssh", doc=InputDocumentation(doc="Path to sum of shared hashes file to map to population\n[required]  [required]")), ToolInput(tag="in_tree", input_type=File(optional=True), prefix="--tree", doc=InputDocumentation(doc="Path to phylogeny [newick] to use as population map\n[required] NOTE: This argument is mutually exclusive with\narguments: [graph].")), ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="Path to a population graph to use as population map\n[none] NOTE: This argument is mutually exclusive with\narguments: [tree].")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to lineage index file to use as validation\npopulation [required]  [required]")), ToolInput(tag="in_column", input_type=File(optional=True), prefix="--column", doc=InputDocumentation(doc="Column in index file that map the indices from the sum of\nshared hashes file to the population")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to a output GIF [pop.gif]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to a output GIF [pop.gif]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Survey_Popmap_V0_1_0().translate("wdl", allow_empty_container=True)

