from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bedcoverage_V0_1_0 = CommandToolBuilder(tool="BedCoverage", base_command=["BedCoverage"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="-bam", doc=InputDocumentation(doc="Input BAM/CRAM file(s).")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="-min_mapq", doc=InputDocumentation(doc="Minimum mapping quality.\nDefault value: '1'")), ToolInput(tag="in_dup", input_type=Boolean(optional=True), prefix="-dup", doc=InputDocumentation(doc="Include reads marked as duplicates.\nDefault value: 'false'")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file (note that overlapping regions will be merged before processing). If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_mode", input_type=File(optional=True), prefix="-mode", doc=InputDocumentation(doc="Mode to optimize run time. Use 'panel' mode if only a small part of the data in the BAM file is accessed, e.g. a sub-panel of an exome.\nDefault value: 'default'\nValid: 'default,panel'")), ToolInput(tag="in_decimals", input_type=Int(optional=True), prefix="-decimals", doc=InputDocumentation(doc="Number of decimals used in output.\nDefault value: '2'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Reference genome for CRAM support (mandatory if CRAM is used).\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedcoverage_V0_1_0().translate("wdl")

