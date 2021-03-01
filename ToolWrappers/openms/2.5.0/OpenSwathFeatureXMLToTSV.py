from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Openswathfeaturexmltotsv_V0_1_0 = CommandToolBuilder(tool="OpenSwathFeatureXMLToTSV", base_command=["OpenSwathFeatureXMLToTSV"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="*                     Input files separated by blank (valid formats: 'featureXML')")), ToolInput(tag="in_tr", input_type=File(optional=True), prefix="-tr", doc=InputDocumentation(doc="*                      TraML transition file (valid formats: 'traML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                     Tsv output file (mProphet compatible) (valid formats: 'csv')")), ToolInput(tag="in_short_format", input_type=Boolean(optional=True), prefix="-short_format", doc=InputDocumentation(doc="Whether to write short (one peptide per line) or long format (one transition per line).")), ToolInput(tag="in_best_scoring_peptide", input_type=String(optional=True), prefix="-best_scoring_peptide", doc=InputDocumentation(doc="If only the best scoring feature per peptide should be printed, give the variable name")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                     Tsv output file (mProphet compatible) (valid formats: 'csv')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openswathfeaturexmltotsv_V0_1_0().translate("wdl", allow_empty_container=True)

