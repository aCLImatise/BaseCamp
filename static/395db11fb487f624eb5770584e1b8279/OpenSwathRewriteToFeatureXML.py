from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean

Openswathrewritetofeaturexml_V0_1_0 = CommandToolBuilder(tool="OpenSwathRewriteToFeatureXML", base_command=["OpenSwathRewriteToFeatureXML"], inputs=[ToolInput(tag="in_csv", input_type=File(optional=True), prefix="-csv", doc=InputDocumentation(doc="MProphet tsv output file: 'all_peakgroups.xls' (valid formats: 'csv')")), ToolInput(tag="in_feature_xml", input_type=File(optional=True), prefix="-featureXML", doc=InputDocumentation(doc="*   Input featureXML file (valid formats: 'featureXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*          Output featureXML file (valid formats: 'featureXML')")), ToolInput(tag="in_fdr_cut_off", input_type=Float(optional=True), prefix="-FDR_cutoff", doc=InputDocumentation(doc="FDR cutoff (e.g. to remove all features with a an m_score above 0.05 use 0.05 here) (default: '-1.0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_csv", type_hint=File()), doc=OutputDocumentation(doc="MProphet tsv output file: 'all_peakgroups.xls' (valid formats: 'csv')")), ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*          Output featureXML file (valid formats: 'featureXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openswathrewritetofeaturexml_V0_1_0().translate("wdl")

