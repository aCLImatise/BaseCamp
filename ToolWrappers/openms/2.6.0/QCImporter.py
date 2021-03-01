from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Qcimporter_V0_1_0 = CommandToolBuilder(tool="QCImporter", base_command=["QCImporter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input qcml file (valid formats: 'qcML')")), ToolInput(tag="in_table", input_type=File(optional=True), prefix="-table", doc=InputDocumentation(doc="*     The table containing the additional qp values in the columns. First row is considered containing the header. The target run or set names/ids are indicated by column 'raw data file', so each row after the header will contain the values of qps for that run. (csv without '!) (valid formats: 'csv')")), ToolInput(tag="in_mapping", input_type=File(optional=True), prefix="-mapping", doc=InputDocumentation(doc="*   The mapping of the table header to the according qp cvs, also in csv format. The first row is considered containing the headers as in the table. The second row is considered the according qp cv accessions. (csv without '!) (valid formats: 'csv')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*       Output extended qcML file (valid formats: 'qcML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*       Output extended qcML file (valid formats: 'qcML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcimporter_V0_1_0().translate("wdl")

