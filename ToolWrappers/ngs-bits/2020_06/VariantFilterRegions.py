from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Variantfilterregions_V0_1_0 = CommandToolBuilder(tool="VariantFilterRegions", base_command=["VariantFilterRegions"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list.")), ToolInput(tag="in_reg", input_type=File(optional=True), prefix="-reg", doc=InputDocumentation(doc="Input target region in BED format.\nDefault value: ''")), ToolInput(tag="in_single_target_region", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Single target region in the format chr17:41194312-41279500.\nDefault value: ''")), ToolInput(tag="in_mark", input_type=String(optional=True), prefix="-mark", doc=InputDocumentation(doc="If set, instead of removing variants, they are marked with the given flag in the 'filter' column.\nDefault value: ''")), ToolInput(tag="in_in_v", input_type=Boolean(optional=True), prefix="-inv", doc=InputDocumentation(doc="Inverts the filter, i.e. variants inside the region are removed/marked.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantfilterregions_V0_1_0().translate("wdl", allow_empty_container=True)

