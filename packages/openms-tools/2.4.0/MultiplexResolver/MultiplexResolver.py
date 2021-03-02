from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Multiplexresolver_V0_1_0 = CommandToolBuilder(tool="MultiplexResolver", base_command=["MultiplexResolver"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*            Peptide multiplets with assigned sequence information (valid formats: 'consensusXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*           Complete peptide multiplets. (valid formats: 'consensusXML')")), ToolInput(tag="in_out_conflicts", input_type=File(optional=True), prefix="-out_conflicts", doc=InputDocumentation(doc="Optional output containing peptide multiplets without ID annotation or with conflicting quant/ID information. (valid formats: 'consensusXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multiplexresolver_V0_1_0().translate("wdl", allow_empty_container=True)

