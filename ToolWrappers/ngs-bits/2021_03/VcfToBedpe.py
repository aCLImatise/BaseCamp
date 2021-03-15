from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Vcftobedpe_V0_1_0 = CommandToolBuilder(tool="VcfToBedpe", base_command=["VcfToBedpe"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input structural variant list in VCF format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output structural variant list in BEDPE format.")), ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="-no_sort", doc=InputDocumentation(doc="Do not sort results\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcftobedpe_V0_1_0().translate("wdl")

