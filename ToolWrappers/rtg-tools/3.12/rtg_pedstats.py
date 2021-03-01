from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Rtg_Pedstats_V0_1_0 = CommandToolBuilder(tool="rtg_pedstats", base_command=["rtg", "pedstats"], inputs=[ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="output id lists using this separator (Default is \n)")), ToolInput(tag="in_dot", input_type=String(optional=True), prefix="--dot", doc=InputDocumentation(doc="output pedigree in Graphviz format, using the supplied\ntext as a title")), ToolInput(tag="in_families", input_type=Boolean(optional=True), prefix="--families", doc=InputDocumentation(doc="output information about family structures")), ToolInput(tag="in_female_ids", input_type=Boolean(optional=True), prefix="--female-ids", doc=InputDocumentation(doc="output ids of all females")), ToolInput(tag="in_founder_ids", input_type=Boolean(optional=True), prefix="--founder-ids", doc=InputDocumentation(doc="output ids of all founders")), ToolInput(tag="in_male_ids", input_type=Boolean(optional=True), prefix="--male-ids", doc=InputDocumentation(doc="output ids of all males")), ToolInput(tag="in_maternal_ids", input_type=Boolean(optional=True), prefix="--maternal-ids", doc=InputDocumentation(doc="output ids of maternal individuals")), ToolInput(tag="in_paternal_ids", input_type=Boolean(optional=True), prefix="--paternal-ids", doc=InputDocumentation(doc="output ids of paternal individuals")), ToolInput(tag="in_primary_ids", input_type=Boolean(optional=True), prefix="--primary-ids", doc=InputDocumentation(doc="output ids of all primary individuals")), ToolInput(tag="in_simple_dot", input_type=Boolean(optional=True), prefix="--simple-dot", doc=InputDocumentation(doc="when outputting Graphviz format, use a layout that\nlooks less like a traditional pedigree diagram but\nworks better with large complex pedigrees")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="the pedigree file to process, may be PED or VCF, use\n'-' to read from stdin"))], outputs=[], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Pedstats_V0_1_0().translate("wdl")

