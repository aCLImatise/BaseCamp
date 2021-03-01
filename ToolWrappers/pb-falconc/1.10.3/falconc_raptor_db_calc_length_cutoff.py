from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falconc_Raptor_Db_Calc_Length_Cutoff_V0_1_0 = CommandToolBuilder(tool="falconc_raptor_db_calc_length_cutoff", base_command=["falconc", "raptor-db-calc-length-cutoff"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__rdbfn_string", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="=, --rdb-fn=       string  'rawreads.db'  set rdb_fn")), ToolInput(tag="in__genomesize_int", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="=, --genome-size=  int64   4600000        set genome_size")), ToolInput(tag="in_coverage_float_set", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --coverage=     float   30.0           set coverage")), ToolInput(tag="in_fail_low_cov", input_type=Boolean(optional=True), prefix="--fail-low-cov", doc=InputDocumentation(doc="bool    false          Exit non-zero if the input\ncoverage was insufficient to\nsatisfy the requirement.")), ToolInput(tag="in__alarmsfn_string", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="=, --alarms-fn=    string  ''             Optional JSON file to write SMRT\nLink alarms. (typically used w/\n-f)\n")), ToolInput(tag="in_raptor_db_calc_length_cut_off", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Raptor_Db_Calc_Length_Cutoff_V0_1_0().translate("wdl")

