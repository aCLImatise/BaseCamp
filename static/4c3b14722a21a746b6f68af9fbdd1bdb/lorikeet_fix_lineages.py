from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float

Lorikeet_Fix_Lineages_V0_1_0 = CommandToolBuilder(tool="lorikeet_fix_lineages", base_command=["lorikeet", "fix-lineages"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input lineage information. (Output of merge-spoligotypes)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file.")), ToolInput(tag="in_tree", input_type=File(optional=True), prefix="--tree", doc=InputDocumentation(doc="Phylogenetic tree file in NWK format.")), ToolInput(tag="in_snp_matrix", input_type=String(optional=True), prefix="--snpmatrix", doc=InputDocumentation(doc="Matrix with pairwise SNP distances (created with pelican)")), ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="--distance", doc=InputDocumentation(doc="Maximum distance to consider closest neighbors. [Default=500]")), ToolInput(tag="in_fraction", input_type=Float(optional=True), prefix="--fraction", doc=InputDocumentation(doc="Fraction of closest neighbors that need to agree to perform change. [Default=0.6]\n")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fix_lineages", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Fix_Lineages_V0_1_0().translate("wdl", allow_empty_container=True)

