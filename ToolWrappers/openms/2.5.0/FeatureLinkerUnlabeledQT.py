from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Featurelinkerunlabeledqt_V0_1_0 = CommandToolBuilder(tool="FeatureLinkerUnlabeledQT", base_command=["FeatureLinkerUnlabeledQT"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input files separated by blanks (valid formats: 'featureXML', 'consensusXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*        Output file (valid formats: 'consensusXML')")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="-design", doc=InputDocumentation(doc="Input file containing the experimental design (valid formats: 'tsv')")), ToolInput(tag="in_keep_subelements", input_type=Boolean(optional=True), prefix="-keep_subelements", doc=InputDocumentation(doc="For consensusXML input only: If set, the sub-features of the inputs are transferred to the output.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*        Output file (valid formats: 'consensusXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Featurelinkerunlabeledqt_V0_1_0().translate("wdl", allow_empty_container=True)

