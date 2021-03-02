from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Vcfstreamsort_V0_1_0 = CommandToolBuilder(tool="VcfStreamSort", base_command=["VcfStreamSort"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input VCF file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output VCF list. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_number_variants_cache", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Number of variants to cache for sorting.\nDefault value: '10000'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfstreamsort_V0_1_0().translate("wdl")

