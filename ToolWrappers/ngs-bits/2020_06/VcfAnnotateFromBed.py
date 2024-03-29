from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Vcfannotatefrombed_V0_1_0 = CommandToolBuilder(tool="VcfAnnotateFromBed", base_command=["VcfAnnotateFromBed"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="BED file used for annotation.")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-name", doc=InputDocumentation(doc="Annotation name in output VCF file.")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input VCF file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output VCF list. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name", type_hint=File()), doc=OutputDocumentation(doc="Annotation name in output VCF file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfannotatefrombed_V0_1_0().translate("wdl", allow_empty_container=True)

