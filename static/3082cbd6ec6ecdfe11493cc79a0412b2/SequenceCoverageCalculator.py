from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sequencecoveragecalculator_V0_1_0 = CommandToolBuilder(tool="SequenceCoverageCalculator", base_command=["SequenceCoverageCalculator"], inputs=[ToolInput(tag="in_in_database", input_type=File(optional=True), prefix="-in_database", doc=InputDocumentation(doc="*  Input file containing the database in FASTA format (valid formats: 'fasta')")), ToolInput(tag="in_in_peptides", input_type=File(optional=True), prefix="-in_peptides", doc=InputDocumentation(doc="*  Input file containing the identified peptides (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Optional text output file. If left out, the output is written to the command line. (valid formats: 'txt')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Optional text output file. If left out, the output is written to the command line. (valid formats: 'txt')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequencecoveragecalculator_V0_1_0().translate("wdl", allow_empty_container=True)

