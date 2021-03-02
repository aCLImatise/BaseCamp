from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Speclibcreator_V0_1_0 = CommandToolBuilder(tool="SpecLibCreator", base_command=["SpecLibCreator"], inputs=[ToolInput(tag="in_info", input_type=File(optional=True), prefix="-info", doc=InputDocumentation(doc="*          Holds id, peptide, retention time etc. (valid formats: 'csv')")), ToolInput(tag="in_item_seperator", input_type=String(optional=True), prefix="-itemseperator", doc=InputDocumentation(doc="Separator between items. e.g. , (default: ',')")), ToolInput(tag="in_item_enclosed", input_type=Boolean(optional=True), prefix="-itemenclosed", doc=InputDocumentation(doc="'true' or 'false' if true every item is enclosed e.g. '$peptide$,$run$... (default: 'false' valid: 'true', 'false')")), ToolInput(tag="in_spec", input_type=File(optional=True), prefix="-spec", doc=InputDocumentation(doc="*          Spectra (valid formats: 'mzData', 'mzXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*           Output MSP formatted spectra library (valid formats: 'msp')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Speclibcreator_V0_1_0().translate("wdl", allow_empty_container=True)

