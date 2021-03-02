from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Boolean

Ngsdexportcnvtrack_V0_1_0 = CommandToolBuilder(tool="NGSDExportCnvTrack", base_command=["NGSDExportCnvTrack"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output IGV file.")), ToolInput(tag="in_system", input_type=String(optional=True), prefix="-system", doc=InputDocumentation(doc="Processing system name filter (short name).\nDefault value: ''")), ToolInput(tag="in_min_dp", input_type=Float(optional=True), prefix="-min_dp", doc=InputDocumentation(doc="Minimum depth of the processed sample.\nDefault value: '0'")), ToolInput(tag="in_max_cn_vs", input_type=Float(optional=True), prefix="-max_cnvs", doc=InputDocumentation(doc="Maximum number of CNVs per sample.\nDefault value: '0'")), ToolInput(tag="in_min_af", input_type=Float(optional=True), prefix="-min_af", doc=InputDocumentation(doc="Minimum allele frequency of output CNV ranges.\nDefault value: '0.01'")), ToolInput(tag="in_caller_version", input_type=String(optional=True), prefix="-caller_version", doc=InputDocumentation(doc="Restrict output to callsets with this caller version.\nDefault value: ''")), ToolInput(tag="in_stats", input_type=File(optional=True), prefix="-stats", doc=InputDocumentation(doc="Statistics and logging output. If unset, writes to STDOUT\nDefault value: ''")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output IGV file."))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdexportcnvtrack_V0_1_0().translate("wdl")

