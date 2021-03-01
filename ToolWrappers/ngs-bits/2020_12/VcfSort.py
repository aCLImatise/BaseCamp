from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Vcfsort_V0_1_0 = CommandToolBuilder(tool="VcfSort", base_command=["VcfSort"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list in VCF format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list in VCF or VCF.GZ format.")), ToolInput(tag="in_qual", input_type=Boolean(optional=True), prefix="-qual", doc=InputDocumentation(doc="Also sort according to variant quality. Ignored if 'fai' file is given.\nDefault value: 'false'")), ToolInput(tag="in_fai", input_type=File(optional=True), prefix="-fai", doc=InputDocumentation(doc="FAI file defining different chromosome order.\nDefault value: ''")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="-compression_level", doc=InputDocumentation(doc="Output VCF compression level from 1 (fastest) to 9 (best compression). If unset, an unzipped VCF is written.\nDefault value: '0'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsort_V0_1_0().translate("wdl")

