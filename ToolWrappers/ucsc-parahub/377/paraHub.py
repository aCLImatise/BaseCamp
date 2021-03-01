from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File, Boolean

Parahub_V0_1_0 = CommandToolBuilder(tool="paraHub", base_command=["paraHub"], inputs=[ToolInput(tag="in_spokes", input_type=Int(optional=True), prefix="-spokes", doc=InputDocumentation(doc="Number of processes that feed jobs to nodes - default 30.")), ToolInput(tag="in_job_check_period", input_type=Int(optional=True), prefix="-jobCheckPeriod", doc=InputDocumentation(doc="Minutes between checking on job - default 10.")), ToolInput(tag="in_machine_check_period", input_type=Int(optional=True), prefix="-machineCheckPeriod", doc=InputDocumentation(doc="Minutes between checking on machine - default 20.")), ToolInput(tag="in_subnet", input_type=Float(optional=True), prefix="-subnet", doc=InputDocumentation(doc="Only accept connections from subnet (example 192.168).")), ToolInput(tag="in_next_job_id", input_type=Int(optional=True), prefix="-nextJobId", doc=InputDocumentation(doc="Starting job ID number.")), ToolInput(tag="in_log_facility", input_type=Int(optional=True), prefix="-logFacility", doc=InputDocumentation(doc="Log to the specified syslog facility - default local0.")), ToolInput(tag="in_log_min_priority", input_type=File(optional=True), prefix="-logMinPriority", doc=InputDocumentation(doc="minimum syslog priority to log, also filters file logging.\ndefaults to 'warn'")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="-log", doc=InputDocumentation(doc="Log to file instead of syslog.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc="Don't daemonize")), ToolInput(tag="in_no_resume", input_type=Boolean(optional=True), prefix="-noResume", doc=InputDocumentation(doc="Don't try to reconnect with jobs running on nodes.")), ToolInput(tag="in_ram_unit", input_type=Int(optional=True), prefix="-ramUnit", doc=InputDocumentation(doc="Number of bytes of RAM in the base unit used by the jobs.\nDefault is RAM on node divided by number of cpus on node.\nShorthand expressions allow t,g,m,k for tera, giga, mega, kilo.\ne.g. 4g = 4 Gigabytes.")), ToolInput(tag="in_default_job_ram", input_type=Int(optional=True), prefix="-defaultJobRam", doc=InputDocumentation(doc="Number of ram units in a job has no specified ram usage.\nDefaults to 1.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parahub_V0_1_0().translate("wdl", allow_empty_container=True)

