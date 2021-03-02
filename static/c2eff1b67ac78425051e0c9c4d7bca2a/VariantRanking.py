from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Variantranking_V0_1_0 = CommandToolBuilder(tool="VariantRanking", base_command=["VariantRanking"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list in GSvar format.")), ToolInput(tag="in_hpo_ids", input_type=String(optional=True), prefix="-hpo_ids", doc=InputDocumentation(doc="Comma-separated list of HPO identifiers.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list in GSvar format.")), ToolInput(tag="in_algorithm", input_type=Int(optional=True), prefix="-algorithm", doc=InputDocumentation(doc="Algorithm used for ranking.\nDefault value: 'GSvar_v1'\nValid: 'GSvar_v1,GSvar_v1_noNGSD'")), ToolInput(tag="in_add_explaination", input_type=Boolean(optional=True), prefix="-add_explaination", doc=InputDocumentation(doc="Add a third column with an explaination how that score was calculated.\nDefault value: 'false'")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantranking_V0_1_0().translate("wdl")

