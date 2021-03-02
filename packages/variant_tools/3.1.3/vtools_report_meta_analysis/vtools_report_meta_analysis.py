from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Array, String, File

Vtools_Report_Meta_Analysis_V0_1_0 = CommandToolBuilder(tool="vtools_report_meta_analysis", base_command=["vtools_report", "meta_analysis"], inputs=[ToolInput(tag="in_beta", input_type=Int(optional=True), prefix="--beta", doc=InputDocumentation(doc="column number of beta")), ToolInput(tag="in_pval", input_type=Int(optional=True), prefix="--pval", doc=InputDocumentation(doc="column number of p-value")), ToolInput(tag="in_se", input_type=Int(optional=True), prefix="--se", doc=InputDocumentation(doc="column number of standard error")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="column number of sample size")), ToolInput(tag="in_link", input_type=Array(t=String(), optional=True), prefix="--link", doc=InputDocumentation(doc="columns that links entries of two datasets")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method (choose from 'ssb' for sample based method and\n'ivb' for inverse variance based method), default set\nto 'ssb'")), ToolInput(tag="in_to_db", input_type=Int(optional=True), prefix="--to_db", doc=InputDocumentation(doc="will write the results also to a sqlite3 database\ncompatible with vtools associate result format")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Input text files in the format of $vtools associate\noutput (supports plain text, gz or bz2 compressed text\nfiles)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Meta_Analysis_V0_1_0().translate("wdl", allow_empty_container=True)

