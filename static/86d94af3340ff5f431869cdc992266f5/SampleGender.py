from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Samplegender_V0_1_0 = CommandToolBuilder(tool="SampleGender", base_command=["SampleGender"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BAM file(s).")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="-method", doc=InputDocumentation(doc="Method selection: Read distribution on X and Y chromosome (xy), fraction of heterocygous variants on X chromosome (hetx), or coverage of SRY gene (sry).\nValid: 'xy,hetx,sry'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output TSV file - one line per input BAM file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_max_female", input_type=Float(optional=True), prefix="-max_female", doc=InputDocumentation(doc="Maximum Y/X ratio for female (method xy).\nDefault value: '0.06'")), ToolInput(tag="in_min_male", input_type=Float(optional=True), prefix="-min_male", doc=InputDocumentation(doc="Minimum Y/X ratio for male (method xy).\nDefault value: '0.09'")), ToolInput(tag="in_min_female", input_type=Float(optional=True), prefix="-min_female", doc=InputDocumentation(doc="Minimum heterocygous SNP fraction for female (method hetx).\nDefault value: '0.24'")), ToolInput(tag="in_max_male", input_type=Float(optional=True), prefix="-max_male", doc=InputDocumentation(doc="Maximum heterocygous SNP fraction for male (method hetx).\nDefault value: '0.15'")), ToolInput(tag="in_sry_cov", input_type=Float(optional=True), prefix="-sry_cov", doc=InputDocumentation(doc="Minimum average coverage of SRY gene for males (method sry).\nDefault value: '20'")), ToolInput(tag="in_build", input_type=Int(optional=True), prefix="-build", doc=InputDocumentation(doc="Genome build used to generate the input (methods hetx and sry).\nDefault value: 'hg19'\nValid: 'hg19,hg38'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samplegender_V0_1_0().translate("wdl", allow_empty_container=True)

