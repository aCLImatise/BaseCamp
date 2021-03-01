from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chainsaw_V0_1_0 = CommandToolBuilder(tool="chainsaw", base_command=["chainsaw"], inputs=[ToolInput(tag="in_arg_specify_cleavage", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --cleavageAgentName ] arg        : specify cleavage by name. Options:\nTrypsin, Arg-C, Asp-N, Asp-N_ambic,\nChymotrypsin, CNBr, Formic_acid, Lys-C,\nLys-C/P, PepsinA, TrypChymo, Trypsin/P,\nV8-DE, V8-E, leukocyte elastase, proline\nendopeptidase, glutamyl endopeptidase,\n2-iodobenzoate, no cleavage, unspecific\ncleavage\nDefault : trypsin")), ToolInput(tag="in_arg_specify_egtrypsin", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --cleavageAgentRegex ] arg       : specify a cleavage agent regex (e.g.\ntrypsin = '(?<=[KR])(?!P)')")), ToolInput(tag="in_arg_specify_number", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --numMissedCleavages ] arg (=0)  : specify number of missed cleavages to")), ToolInput(tag="in_benchmark", input_type=Boolean(optional=True), prefix="--benchmark", doc=InputDocumentation(doc=": do not write results")), ToolInput(tag="in_index_only", input_type=Boolean(optional=True), prefix="--indexOnly", doc=InputDocumentation(doc=": create database index (if necessary)")), ToolInput(tag="in_protein_summary", input_type=Boolean(optional=True), prefix="--proteinSummary", doc=InputDocumentation(doc=": print a table with index, id, length,\nMW, and description for each protein")), ToolInput(tag="in_subset", input_type=String(optional=True), prefix="--subset", doc=InputDocumentation(doc=": create a subset database (use filters\nto define the subset)")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc=": add a protein list filter")), ToolInput(tag="in_allow_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-s [ --specificity ] arg              : specify minimum specificity. Options:")), ToolInput(tag="in_fully", input_type=String(), position=0, doc=InputDocumentation(doc="-m [ --minLength ] arg (=0)           : specify minimum length of digested "))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainsaw_V0_1_0().translate("wdl")

